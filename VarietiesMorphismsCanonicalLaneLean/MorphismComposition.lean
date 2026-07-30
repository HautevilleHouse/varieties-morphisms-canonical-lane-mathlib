import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismComposition (A : AdmissibleClass) where
  morphismF : Type u → Type v
  morphismG : Type v → Type w
  compositionMap : ∀ (x : Type u), morphismF x → morphismG (morphismF x)
  associativity : Prop
  identityPreserved : Prop
  associativityClosed : associativity
  identityPreservedClosed : identityPreserved

def CompositionClosed (C : MorphismComposition A) : Prop :=
  C.associativity ∧ C.identityPreserved

theorem composition_closed_from_evidence (C : MorphismComposition A) :
    CompositionClosed C := by
  exact And.intro C.associativityClosed C.identityPreservedClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse