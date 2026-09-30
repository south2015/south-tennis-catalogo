# Contexto del proyecto (para Claude Code)

Catálogo web de **South Tennis**, zapatería en Colombia. Dueño: Ismael. Habla en español.

## Stack
- Un solo archivo `index.html` (HTML/CSS/JS vanilla, sin frameworks ni build). Mantenerlo así salvo que se pida otra cosa.
- Datos: Supabase, proyecto `imjdjitpxuwulpsgezdf`. El catálogo consulta por REST la **vista** `public.catalogo`
  (columnas: id, nombre, talla, genero, precio, foto_url; solo filas con cant > 0) usando la anon key en `CONFIG`.
- Nunca consultar la tabla `inventario` directo desde el front: tiene `pc` (costo) y `ubicacion`, que son privados.
- Fotos: bucket público `ZAPATOS` en Supabase Storage.
  URL: `https://imjdjitpxuwulpsgezdf.supabase.co/storage/v1/object/public/ZAPATOS/<archivo>.jpg`
- Deploy: Netlify conectado a este repo; push a `main` = publicado.

## Tabla `inventario`
id, nombre, talla, genero (DAMA/CABALLERO), cant, precio, pc (costo, privado), origen, ubicacion (privado), foto_url.
Una fila por referencia + talla. `nombre` son apodos cortos en mayúscula (PANDA, TN, SAMBA BEIGE, NB 9060...).
Una misma referencia puede tener foto distinta por talla (ej. TN 42 verde, TN 43 negro): el front agrupa por nombre + foto_url.

## Marca
Colores negro y rojo (#e11d2e). Tipografías Archivo Black + Inter. WhatsApp: 573242729986. Hace domicilios.
Diseño mobile-first: la mayoría de clientes entra desde el celular.

## Reglas
- Probar en móvil (390px) antes de dar algo por terminado; sin scroll horizontal.
- Los cambios de datos (precios, fotos, stock) se hacen en Supabase, no en el HTML.
- Commits en español, cortos y claros.
