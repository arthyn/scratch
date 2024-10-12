import path from 'path';
import commonjs from '@rollup/plugin-commonjs';
import copy from 'rollup-plugin-copy';
import resolve from '@rollup/plugin-node-resolve';
import postcss from 'rollup-plugin-postcss';
import tailwindcss from 'tailwindcss';

const tailwindConfig = require('./tailwind.config.js')

export default {
  input: 'index.js',
  output: [{ dir: path.resolve(__dirname, 'dist'), format: 'es' }],
  plugins: [
    resolve(),
    commonjs(),
    postcss({
      extensions: ['.css'],
      plugins: [tailwindcss(tailwindConfig)],
    }),
    // Copy Shoelace assets to dist/shoelace
    copy({
      copyOnce: true,
      targets: [
        {
          src: path.resolve(__dirname, 'node_modules/@shoelace-style/shoelace/dist/assets'),
          dest: path.resolve(__dirname, 'dist/shoelace')
        }
      ]
    })
  ]
};