(*
 * Zadanie domowe 1, czesc 1
 * Tomasz Makowski
 *  structure file
 *)
structure id291491 :> PART_ONE =
struct
exception NotImplemented

  datatype 'a tree= Leaf of 'a | Node of 'a tree * 'a * 'a tree

  fun sum n =
  if n = 1 then 1 
  else n + sum (n-1);

  fun fac n =
  if n = 1 then 1 
  else n * fac (n-1) ;

  fun fib n =
  if n=1 then 1
  else if n=2 then 1
  else fib(n-1) + fib(n-2) ;

  fun gcd (n,m) =
  if n=m then m
  else if m>n then gcd (n , m- n)
  else gcd(n- m, m) ;

  fun max l =
  if (null l = true) then 0 
  else if hd l > max(tl l) then hd l
  else max(tl l);



  fun sumTree _ = raise NotImplemented
  fun depth _ = raise NotImplemented
  fun binSearch _ _ = raise NotImplemented
  fun preorder _ = raise NotImplemented

  fun listAdd _ _ = raise NotImplemented
  fun insert _ _ = raise NotImplemented 
  fun insort _ = raise NotImplemented 

  fun compose _ _  = raise NotImplemented 
  fun curry _ _ _ = raise NotImplemented 
  fun uncurry _ _ = raise NotImplemented
  fun multifun _ _ = raise NotImplemented

  fun ltake _ _ = raise NotImplemented
  fun lall _ _ = raise NotImplemented
  fun lmap _ _ = raise NotImplemented
  fun lrev _ = raise NotImplemented
  fun lzip _ = raise NotImplemented
  fun split _ = raise NotImplemented
  fun cartprod _ _ = raise NotImplemented

end
