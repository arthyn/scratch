import normalizeTailwindDirectives from './lib/normalizeTailwindDirectives'
import expandTailwindAtRules from './lib/expandTailwindAtRules'
import expandApplyAtRules from './lib/expandApplyAtRules'
import evaluateTailwindFunctions from './lib/evaluateTailwindFunctions'
import substituteScreenAtRules from './lib/substituteScreenAtRules'
import resolveDefaultsAtRules from './lib/resolveDefaultsAtRules'
import collapseAdjacentRules from './lib/collapseAdjacentRules'
import collapseDuplicateDeclarations from './lib/collapseDuplicateDeclarations'
import partitionApplyAtRules from './lib/partitionApplyAtRules'
import detectNesting from './lib/detectNesting'
import { createContext } from './lib/setupContextUtils'
import { issueFlagNotices } from './featureFlags'

export default function processTailwindFeatures(setupContext) {
  return function (root, result) {
    // DONE: IGNORE
    let { tailwindDirectives, applyDirectives } = normalizeTailwindDirectives(root)

    // DONE: IGNORE
    detectNesting()(root, result)

    // DONE: IGNORE
    // Partition apply rules that are found in the css
    // itself.
    partitionApplyAtRules()(root, result)

    // DONE: IGNORE except lib/setupContextUtils.js resolvePlugins/registerPlugins
    let context = setupContext({
      tailwindDirectives,
      applyDirectives,
      registerDependency(dependency) {
        result.messages.push({
          plugin: 'tailwindcss',
          parent: result.opts.from,
          ...dependency,
        })
      },
      createContext(tailwindConfig, changedContent) {
        return createContext(tailwindConfig, changedContent, root)
      },
    })(root, result)

    // DONE: IGNORE UNTIL MAKING SEPARATOR CONFIGURABLE
    if (context.tailwindConfig.separator === '-') {
      throw new Error(
        "The '-' character cannot be used as a custom separator in JIT mode due to parsing ambiguity. Please use another character like '_' instead."
      )
    }

    // DONE: IGNORE FOR NOW
    issueFlagNotices(context.tailwindConfig)

    // DONE: checkout generateRules and buildStylesheet
    expandTailwindAtRules(context)(root, result)

    // DONE: IGNORE FOR NOW
    // Partition apply rules that are generated by
    // addComponents, addUtilities and so on.
    partitionApplyAtRules()(root, result)
    // DONE: IGNORE FOR NOW
    expandApplyAtRules(context)(root, result)
    // UNSURE: possibly relevant
    evaluateTailwindFunctions(context)(root, result)
    // DONE: IGNORE FOR NOW
    substituteScreenAtRules(context)(root, result)
    // DONE: IGNORE FOR NOW
    resolveDefaultsAtRules(context)(root, result)
    // DONE: IGNORE FOR NOW
    collapseAdjacentRules(context)(root, result)
    // DONE: IGNORE FOR NOW
    collapseDuplicateDeclarations(context)(root, result)
  }
}