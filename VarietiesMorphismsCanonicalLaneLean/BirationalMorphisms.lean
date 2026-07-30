import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure BirationalMorphism (V W : Type u) [TopologicalSpace V] [TopologicalSpace W] where
  rationalMap : V → W
  dominant : Prop
  inverseRationalMap : W → V
  isomorphismOnOpen : Prop

structure BirationalMorphismEvidence (f : BirationalMorphism) where
  dominantClosed : f.dominant
  inverseRationalMapExists : Prop
  isomorphismOnOpenClosed : f.isomorphismOnOpen

def BirationalMorphismClosed (f : BirationalMorphism) : Prop :=
  f.dominant ∧ f.isomorphismOnOpen

theorem birational_morphism_closed_from_evidence (f : BirationalMorphism)
    (E : BirationalMorphismEvidence f) : BirationalMorphismClosed f := by
  exact And.intro E.dominantClosed E.isomorphismOnOpenClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse