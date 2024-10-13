import path from 'path';
import commonjs from '@rollup/plugin-commonjs';
import copy from 'rollup-plugin-copy';
import resolve from '@rollup/plugin-node-resolve';
import postcss from 'rollup-plugin-postcss';
import tailwindcss from 'tailwindcss';
import importer from 'postcss-import';

const tailwindConfig = require('./tailwind.config.js')
const config = {
  output: [{ dir: path.resolve(__dirname, 'dist'), format: 'umd', inlineDynamicImports: true }],
  plugins: [
    resolve(),
    commonjs(),
    postcss({
      extensions: ['.css'],
      plugins: [importer(), tailwindcss(tailwindConfig)],
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
}

export default [
  {
    input: 'head.js',
    ...config,
  },
  {
    input: 'foot.js',
    ...config,
  }
]
