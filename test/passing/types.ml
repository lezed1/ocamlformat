type uu = A of int | B of (< leq: 'a > as 'a)

type uu = A of int | B of (< leq: 'a > as 'a) * 'a

type uu = A of (int as 'a) | B of 'a * (< leq: 'a > as 'a)

type uu += A of (int as 'a)

type uu += B of 'a * (< leq: 'a > as 'a)

let _ = ignore Async_unix.Fd.(([stdin (); stdout (); stderr ()] : t list))

type t = {a: int; b: int}

type t = [`A | `B]

type t =
  | Internal_error of
      [ `Doc_comment of
        [ `Moved of Location.t * Location.t * string
        | `Unstable of Location.t * string ] ]

val x :
  [ `X of int
    (** foooooooooooooooo foooooooooooooooooooooooo fooooooooooooooooooooooo
        fooooooooooooooooooo fooooooooooooooo*) ]

val x :
  [ `X of
    int
    * foooooooooooooo
    * fooooooooooo
    * fooooooooooo foooooooooo
    * foooooooooooo
    (** foooooooooooooooo foooooooooooooooooooooooo fooooooooooooooooooooooo
        fooooooooooooooooooo fooooooooooooooo*) ]

val x :
  [ `X of int (* booooom *)
    (** foooooooooooooooo foooooooooooooooooooooooo fooooooooooooooooooooooo
        fooooooooooooooooooo fooooooooooooooo*) ]

val x :
  [ `X of
    int
    * foooooooooooooo
    * fooooooooooo
    * fooooooooooo foooooooooo
    * foooooooooooo
    (* boooooom *)
    (** foooooooooooooooo foooooooooooooooooooooooo fooooooooooooooooooooooo
        fooooooooooooooooooo fooooooooooooooo*) ]
