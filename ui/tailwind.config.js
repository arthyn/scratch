/** @type {import('tailwindcss').Config} */
const plugin = require('tailwindcss/plugin.js');

function PartPlugin () {
  return plugin(function({matchVariant}) {
    matchVariant(
      'part',
      (value) => {
        return `&::part(${value})`;
      },
    );
  })
}

module.exports = {
  content: [
    '../desk/app/scratch/**/*.hoon'
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/typography'),
    PartPlugin(),
  ],
}

