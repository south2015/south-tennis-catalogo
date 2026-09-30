-- South Tennis: SQL completo de fotos del inventario
-- Bucket público: ZAPATOS · Proyecto: imjdjitpxuwulpsgezdf
-- No toca AF1 ni OSITOS 50 (ya tenían su foto).

with fotos(nombre, archivo) as (values
  ('AF1 SAD',           'nike-air-force-1-crema-verde.jpg'),
  ('ALEXANDER MCQUEEN', 'alexander-mcqueen-blanco.jpg'),
  ('CAMPUS',            'adidas-campus-00s-negro.jpg'),
  ('CASIS GEL',         'asics-gel-nimbus-27-gris-aqua.jpg'),
  ('DOLCE GABBANA',     'dc-court-graffik-negro.jpg'),
  ('EQ21',              'adidas-running-negro.jpg'),
  ('JORDAN',            'jordan-4-negro.jpg'),
  ('NB 530',            'new-balance-530-blanco-plata.jpg'),
  ('NB 9060',           'new-balance-9060.jpg'),
  ('NIKE METCOM',       'nike-free-negro.jpg'),
  ('NIKE SHOX',         'nike-shox-tl-negro.jpg'),
  ('NIKE ZOOM',         'nike-zoom-negro.jpg'),
  ('OFF WHITE',         'off-white-runner-negro-gris.jpg'),
  ('ON CLOUD',          'on-cloud-negro.jpg'),
  ('OSITOS',            'nike-dunk-low-blanco-marron-gris.jpg'),
  ('PANDA',             'nike-dunk-low-panda.jpg'),
  ('PARIS',             'jordan-1-low-gris-blanco.jpg'),
  ('REBOOK',            'reebok-club-c-beams-blanco.jpg'),
  ('SAMBA',             'adidas-samba-blanco-negro.jpg'),
  ('SAMBA BEIGE',       'adidas-samba-crema-negro.jpg'),
  ('SB CAFE',           'nike-dunk-low-chocolate.jpg'),
  ('TN',                'nike-air-max-plus-tn-negro-blanco.jpg'),
  ('TRAVIS',            'jordan-1-low-travis.jpg')
)
update inventario i
set foto_url = 'https://imjdjitpxuwulpsgezdf.supabase.co/storage/v1/object/public/ZAPATOS/' || f.archivo
from fotos f
where upper(trim(i.nombre)) = f.nombre;

-- AF1 VERDE es otro tenis (no disponible): sin foto
update inventario set foto_url = null where upper(trim(nombre)) = 'AF1 VERDE';

-- Verificación
select nombre, count(*) as filas, max(foto_url) as foto_url
from inventario
group by nombre
order by (max(foto_url) is null) desc, nombre;
