select * from loc_banco
set serveroutput on;
declare
  v_registro    loc_banco%rowtype;
begin
  select cd_banco, nm_banco --, url
    into v_registro.cd_banco, v_registro.nm_banco
    from loc_banco
   where cd_banco = 341;

  dbms_output.put_line (v_registro.cd_banco || ' ' || v_registro.nm_banco || ' ' ||
  v_registro.url);
end;

-- selecionando apenas uma cidade

select * from loc_ddd;

declare
    nm_nome LOC_DDD.CIDADE_DDD%type;

begin
    select cidade_ddd
    into nm_nome
    from loc_ddd
    where loc_ddd.cd_ddd = 11
    and loc_ddd.SEQ_DDD = 560;
    
    DBMS_OUTPUT.PUT_LINE('cidade : ' || nm_nome);

end;


declare
    locacao LOC_DDD%rowtype;

begin
    select cd_ddd,cidade_ddd,estado_ddd
    into locacao.cd_ddd,locacao.cidade_ddd, locacao.estado_ddd
    from loc_ddd
    where loc_ddd.cd_ddd = 11
    and loc_ddd.SEQ_DDD = 560;
    
    
    DBMS_OUTPUT.PUT_LINE('Codigo : ' || locacao.cd_ddd);
    DBMS_OUTPUT.PUT_LINE('Estado : ' || locacao.estado_ddd);
    DBMS_OUTPUT.PUT_LINE('Cidade : ' || locacao.cidade_ddd);
    
    

end;