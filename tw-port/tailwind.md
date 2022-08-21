# porting tailwind
The following directory is a set of marked files to track which pieces of
Tailwind have been ported.

## general thoughts
- we shouldn't parse or process CSS. instead we should offer gates which
  can produce similar CSS to @ rules and directives
- like current Tailwind, all CSS should be generated dynamically, but 
  cached after processing the first time
- we should port Tailwind without a means to input config at first, but
  all rules should be generated in a way that would make config easy.
  also we should avoid most config for as long as possible, tackling the 
  actual CSS values first.
- ignore @ directives, especially layers
- probably should ignore the general flow of Tailwind's rule building, because ours can be simpler

## current progress
Current work is situated in `/desk/lib`. The `+ui` generator can be used
to test current tailwind pipeline.

## important files
- `public/colors.js`
- `stubs/defaultConfig.stub.js`
- `src/corePlugins.js`
- `src/lib/setupContextUtils.js`
- `src/lib/generateRules.js`
- `src/lib/expandTailwindAtRules.js`
  - only relevant portions are `buildStylesheet` and caching stuff
- `types/config.d.ts` helpful documentation


## general flow
We receive a `manx` to process, we iterate through all nodes collecting classes as we go. 

Once we have the full set of classes then we iterate through each one, doing a lookup on each class to see if we've already generated it. If so simply return it, otherwise generate the rule, save it, and return it. 

After all classes have been iterated through, return a context containing generated class map (and possibly other metadata?).