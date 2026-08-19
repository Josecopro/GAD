create function  fn_get_country_attribute_by_id (
 p_CountryId type of countries.id,
p_attribute varchar(100) type of countries.
)
returns varchar(100)
begin
 declare v_name varchar(100) default null;
 declare c_Countries cursor for
 select concat(first_name, ' ', last_name) as full_name
 from singers
 where country_id = p_country_id;
 open c_Countries;
 fetch c_Countries
 into v_name;
 close c_Countries;
 return v_name;
end;