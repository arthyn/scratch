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

## current progress
Current work is situated in `/desk/lib`. The `+ui` generator can be used
to test current tailwind pipeline.

## important files
- `public/colors.js`
- `stubs/defaultConfig.stub.js`
- `src/corePlugins.js`
- `src/lib/generateRules.js`
- `src/lib/expandTailwindAtRules.js`
  - only relevant portions are `buildStylesheet` and caching stuff