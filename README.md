# scratch

A small app for saving text, similar to pastebin. Also an experimental
testbed for a new supercharged [Sail](https://developers.urbit.org/guides/additional/sail) 
framework.

## thoughts
We need a way for new Hoon devs to be able to create robust UI without
needing to learn Javascript. "Server rendered" apps are fine for most use
cases. There have even been advances to make many of the drawbacks
non-existent. The main libraries that address this are [Hotwire](https://hotwired.dev/),
[htmx](https://htmx.org/), and [AlpineJS](https://alpinejs.dev/).

## first stage
- port [TailwindCSS](https://tailwindcss.com/) to Hoon and create a library
  that integrates easily with Sail and the new framework
- begin implementing basic components as "primitives" possibly using
  something like [Radix UI](https://www.radix-ui.com/) or hand rolled 
  with 
- build gates or Sail hooks of some kind to integrate with one of the
  "dynamic" HTML libraries listed above
- build first version of the app using the above

## second stage
- begin wrapping functionality into custom Sail tags and abstracting
  functionality into components
- explore common patterns of urbit app interactions and create helpers to 
  facilitate easier/quicker methods
- rewrite app given new abstractions

## third stage
- writeup docs for everything generated in the second stage
- create more complex app to show-off what's possible and explore further
  necessary abstractions