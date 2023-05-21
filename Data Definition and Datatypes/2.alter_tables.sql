USE `minions`;
-- 2
ALTER TABLE minions
add column town_id int;

alter table minions
add constraint fk_minions_towns
foreign key minions(town_id)
references town( id);


