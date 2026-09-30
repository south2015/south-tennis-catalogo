-- Fotos que dependen de la talla (correr DESPUÉS de 02_fotos_inventario.sql)
update inventario set foto_url = 'https://imjdjitpxuwulpsgezdf.supabase.co/storage/v1/object/public/ZAPATOS/nike-air-max-plus-tn-blanco-verde.jpg'
where upper(trim(nombre)) = 'TN' and talla::text = '42';

update inventario set foto_url = 'https://imjdjitpxuwulpsgezdf.supabase.co/storage/v1/object/public/ZAPATOS/nike-air-max-plus-tn-negro-blanco.jpg'
where upper(trim(nombre)) = 'TN' and talla::text = '43';

update inventario set foto_url = 'https://imjdjitpxuwulpsgezdf.supabase.co/storage/v1/object/public/ZAPATOS/new-balance-9060-blanco.jpg'
where upper(trim(nombre)) = 'NB 9060' and talla::text = '38';
