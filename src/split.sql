CREATE OR REPLACE FUNCTION SPLIT (p_list VARCHAR2, p_del VARCHAR2 := '|')
   RETURN split_tbl PIPELINED
IS
   l_idx     PLS_INTEGER;
   l_list    VARCHAR2 (1000) := p_list;
   l_value   VARCHAR2 (1000);
BEGIN
   LOOP
      l_idx := INSTR (l_list, p_del);

      IF l_idx > 0
      THEN
         PIPE ROW (SUBSTR (l_list, 1, l_idx - 1));
         l_list := SUBSTR (l_list, l_idx + LENGTH (p_del));
      ELSE
         PIPE ROW (l_list);
         EXIT;
      END IF;
   END LOOP;

   RETURN;
END SPLIT;
/
