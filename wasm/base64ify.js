const fs = require('fs');

const file = fs.readFileSync('./vapkey.opt.wasm', { encoding: 'base64' });

fs.writeFileSync('../src/vapkey.wasm.js', `export default new Buffer('${file}', 'base64');\n`);
