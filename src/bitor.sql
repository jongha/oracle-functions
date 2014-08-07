CREATE OR REPLACE FUNCTION bitor (p_dec1 NUMBER, p_dec2 NUMBER)
   RETURN NUMBER
IS
BEGIN
   RETURN p_dec1 - BITAND (p_dec1, p_dec2) + p_dec2;
END bitor;
/