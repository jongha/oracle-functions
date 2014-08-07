CREATE OR REPLACE FUNCTION bitxor (p_dec1 NUMBER, p_dec2 NUMBER)
   RETURN NUMBER
IS
BEGIN
   RETURN bitor (p_dec1, p_dec2) - BITAND (p_dec1, p_dec2);
END bitxor;
/
