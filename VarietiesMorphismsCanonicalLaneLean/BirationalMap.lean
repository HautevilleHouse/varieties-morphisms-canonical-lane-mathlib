import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure BirationalMapPackage where
  sourceVariety : Type u
  targetVariety : Type v
  rationalMap : Type w
  dominant : Prop
  isomorphismOnOpen : Prop
  fieldIsomorphism : Prop

structure BirationalMapEvidence (B : BirationalMapPackage) where
  dominantClosed : B.dominant
  isomorphismOnOpenClosed : B.isomorphismOnOpen
  fieldIsomorphismClosed : B.fieldIsomorphism

def BirationalMapClosed (B : BirationalMapPackage) : Prop :=
  B.dominant ∧ B.isomorphismOnOpen ∧ B.fieldIsomorphism

theorem birational_map_closed_from_evidence (B : BirationalMapPackage)
    (E : BirationalMapEvidence B) : BirationalMapClosed B := by
  exact And.intro E.dominantClosed (And.intro E.isomorphismOnOpenClosed E.fieldIsomorphismClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse