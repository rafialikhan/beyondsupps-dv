#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p assets/products
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/102_33b2d024-87dc-4c5b-88b5-6b5be7d20ae6.webp?v=1738461202&width=533' -o 'assets/products/muscleblaze-biozyme-performance-whey.webp'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/1.png?v=1738087489&width=533' -o 'assets/products/optimum-nutrition-gold-standard-whey.png'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/71BqMFqPl3L._SL1500.jpg?v=1787573613&width=533' -o 'assets/products/muscletech-nitro-tech-whey.jpg'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/1_fbcc8476-fd2d-4d0e-8242-919f0e892876.webp?v=1755251666&width=533' -o 'assets/products/wellcore-creatine.webp'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/18_ddf53346-b7fe-4a17-97c9-0d69a8df2495.webp?v=1738003758&width=533' -o 'assets/products/gnc-creatine.webp'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/10_6cb178b8-f9c7-4acf-8e68-5bdca40a453b.webp?v=1738652104&width=533' -o 'assets/products/scivation-xtend-bcaa.webp'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/71PTkNDjrsL._SL1500.jpg?v=1787831953&width=533' -o 'assets/products/ronnie-coleman-king-whey.jpg'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/71AnHO2B3KL._SL1500.jpg?v=1787841242&width=533' -o 'assets/products/gnc-micellar-casein.jpg'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/71ANPWW_dqL._SX679.jpg?v=1741895638&width=533' -o 'assets/products/muscletech-platinum-creatine.jpg'
curl -L --fail --silent --show-error 'https://beyondsupps.in/cdn/shop/files/91_5e552e87-4701-47ca-854d-1569e29b1c47.webp?v=1738546674&width=533' -o 'assets/products/muscleblaze-wrathx-preworkout.webp'
python3 - <<'PY'
from pathlib import Path
p=Path('app.js'); s=p.read_text()
s=s.replace("https://beyondsupps.in/cdn/shop/files/102_33b2d024-87dc-4c5b-88b5-6b5be7d20ae6.webp?v=1738461202&width=533", "assets/products/muscleblaze-biozyme-performance-whey.webp")
s=s.replace("https://beyondsupps.in/cdn/shop/files/1.png?v=1738087489&width=533", "assets/products/optimum-nutrition-gold-standard-whey.png")
s=s.replace("https://beyondsupps.in/cdn/shop/files/71BqMFqPl3L._SL1500.jpg?v=1787573613&width=533", "assets/products/muscletech-nitro-tech-whey.jpg")
s=s.replace("https://beyondsupps.in/cdn/shop/files/1_fbcc8476-fd2d-4d0e-8242-919f0e892876.webp?v=1755251666&width=533", "assets/products/wellcore-creatine.webp")
s=s.replace("https://beyondsupps.in/cdn/shop/files/18_ddf53346-b7fe-4a17-97c9-0d69a8df2495.webp?v=1738003758&width=533", "assets/products/gnc-creatine.webp")
s=s.replace("https://beyondsupps.in/cdn/shop/files/10_6cb178b8-f9c7-4acf-8e68-5bdca40a453b.webp?v=1738652104&width=533", "assets/products/scivation-xtend-bcaa.webp")
s=s.replace("https://beyondsupps.in/cdn/shop/files/71PTkNDjrsL._SL1500.jpg?v=1787831953&width=533", "assets/products/ronnie-coleman-king-whey.jpg")
s=s.replace("https://beyondsupps.in/cdn/shop/files/71AnHO2B3KL._SL1500.jpg?v=1787841242&width=533", "assets/products/gnc-micellar-casein.jpg")
s=s.replace("https://beyondsupps.in/cdn/shop/files/71ANPWW_dqL._SX679.jpg?v=1741895638&width=533", "assets/products/muscletech-platinum-creatine.jpg")
s=s.replace("https://beyondsupps.in/cdn/shop/files/91_5e552e87-4701-47ca-854d-1569e29b1c47.webp?v=1738546674&width=533", "assets/products/muscleblaze-wrathx-preworkout.webp")
p.write_text(s)
print('Downloaded product photos and switched app.js to local assets.')
PY
