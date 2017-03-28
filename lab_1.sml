(*
 * Zadanie domowe 1, czesc 1
 * Tomasz Makowski
 *  structure file
 *)
structure id291491 :> PART_ONE =
struct
exception NotImplemented

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



  fun sumTree (Leaf n) = n
  | sumTree (Node (left, n, right)) = (sumTree left + n + sumTree right);

  fun depth (Leaf n) = 0
  | depth (Node (left, n, right)) = 
  if(depth left) > (depth right) then 1 + (depth left)
  else 1 + (depth right);

  fun binSearch (Leaf n) m = 
  if (n=m) then true
  else false
  | binSearch(Leaf _)_ = false
  binSearch (Node (left, n, right)) m = 
  if (n = m) then true
  else if (n < m) then ((binSearch right) m)
  else ((binSearch left) m );
  


  fun preorder t =
  case t of
  Leaf a => [a]
  | Node(left,x,right) => x :: (preorder left) @ (preorder right);
  
  fun listAdd l1 [] = l1
  | listAdd [] l2 = l2
  | listAdd (head1::tail1) (head2::tail2) = (head1 + head2) :: (listAdd tail1 tail2);
  
  fun insert (m:int) [] = [m]
  | insert (m:int) (l:int list as h::t) =
  if m < h then m :: l
  else h :: insert m t ;

  fun insort (m:int list) = 
  case m of
	nil => []
	| h::t => insert h (insort t);



  fun compose f g = (fn x =>g(f x));
  
  fun curry f x y  = f(x,y);
  
  fun uncurry f(x,y) = f x y;
  
  fun multifun f n =
  if n=1 then (fn x =>f x)
  else (fn x =>f((multifun f (n-1))x));



  fun ltake _ 0 = []
  | ltake [] _ = []
  | ltake (head::tail) n = head :: (ltake tail (n-1));
  
  fun lall f [] = true
  | lall f (head::tail) 
  if not (f head) then false
  else lall f tail;

  fun lmap f [] = []
  | lmap f (head::tail) = (f head) :: (lmap f tail);

  fun lrev [] = []
  | lrev (head::tail) = (lrev tail) @ [head]
  
  fun lzip ([], _) = []
  | lzip (_, []) = []
  | lzip (head1::tail1, head2::tail2) = (head1, head2) :: (lzip (tail1, tail2))
	
  fun split [] = ([], [])
  | split (head::tail) =
  let
	val (a, b) = split tail
	in
	(head :: b, a)
  end

  fun cartprod [] _ = []
  | cartprod _ [] = []
  | cartprod (head1::tail1) (head2::tail2) =
  (head1, head2) :: (cartprod [head1] tail2) @ (cartprod tail1 (head2::tail2));
