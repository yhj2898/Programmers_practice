SELECT i.animal_id, i.animal_type, i.name
FROM ANIMAL_INS i
LEFT JOIN ANIMAL_OUTS o on o.animal_id=i.animal_id
WHERE i.sex_upon_intake LIKE 'Intact %' AND o.sex_upon_outcome NOT LIKE 'Intact %'