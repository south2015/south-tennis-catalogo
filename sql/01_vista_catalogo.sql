-- Vista pública para el catálogo web de South Tennis.
-- Solo expone lo que el cliente debe ver (sin costo "pc", sin ubicación)
-- y solo filas con existencias (cant > 0).

create or replace view public.catalogo as
select id, nombre, talla, genero, precio, foto_url
from public.inventario
where cant > 0;

grant select on public.catalogo to anon;
