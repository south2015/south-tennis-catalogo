# South Tennis · Catálogo web

Catálogo público de la tienda South Tennis. Lee el inventario **en vivo** desde Supabase
y muestra solo referencias y tallas con existencias. Los pedidos se hacen por WhatsApp (324 272 9986).

## Estructura
- `index.html` — el catálogo completo (HTML + CSS + JS en un solo archivo, sin build).
- `sql/01_vista_catalogo.sql` — vista pública `catalogo` (oculta costo `pc` y `ubicacion`).
- `sql/02_fotos_inventario.sql` — asigna `foto_url` por nombre de referencia.
- `sql/03_fotos_por_talla.sql` — fotos que cambian según la talla (TN, NB 9060).

## Publicación
Conectado a Netlify: cada `git push` a `main` se publica solo.
