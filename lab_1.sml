(*
 * Zadanie domowe 1, czesc 1
 * Tomasz Makowski
 *  structure file
 *)
structure id291491 :> PART_ONE =
struct
  exception NotImplemented

  datatype 'a tree= Leaf of 'a | Node of 'a tree * 'a * 'a tree

  fun sum _ = raise NotImplemented
  fun fac _ = raise NotImplemented
  fun fib _ = raise NotImplemented
  fun gcd _ = raise NotImplemented
  fun max _ = raise NotImplemented

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
