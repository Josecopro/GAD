create function fn_get_singer_by_id(
 p_singer_id type of singers.id
)
returns varchar(100)
begin
 declare v_name varchar(100) default null;
 declare c_singers cursor for
 select concat(first_name, ' ', last_name) as full_name
 from singers
 where id = p_singer_id;
 open c_singers;
 fetch c_singers
 into v_name;
 close c_singers;
 return v_name;
end;