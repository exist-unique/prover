def yes : Bool := true
#check yes
-- checks the type of the variable yes

def and: Bool := true && false
def or: Bool := true || false

def increment (n : Nat) : Nat := n + 1

-- Lambda expression
#check (λ n: Nat => n+1)
#eval (fun n: Nat => n+1) 1

section NewScope
  variable (α β γ : Type)
  def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ :=
    g (f x)
end NewScope

/-
Define a function called "increment" that takes a natural number n and returns the natural number n + 1
The symbol := means defined by
-/

def max (x: Nat) (y: Nat) : Nat :=
  if x < y then
    y
  else x


#eval increment 1
-- Evaluate the function increment at 1

structure ComplexNumber where
  r: Float
  θ: Float
-- Define a structure called "ComplexNumber" with two fields: r (a Float) and θ (a Float)

def z : ComplexNumber := { r := 1.0, θ := 3.14 }
#eval z
#eval z.θ

def Catalan : List Int := [1, 2, 5, 14, 42, 132]

def one:= Catalan[0]
#eval one


def orgin2D : Float × Float := (0, 0)

abbrev C : Type := ComplexNumber
-- Define an abbrebiation

namespace myGroup
def operation (x y: Int) : Int := x+y
def inverse(x : Int) := -x
def unit : Int := 0
end myGroup
-- Put a bunch of related things under one name.

#eval myGroup.inverse (-1 : Int)
-- How to access some thing under the namespace.

open myGroup
-- when you open a namespace you can access what's inside without reference to the namespace
-- i.e unit instead of myGroup.unit

#eval inverse (-1 : Int)

theorem trivial_thm: 1 + 0 = 1 := by
  rfl

set_option pp.all true 
#print trivial_thm
