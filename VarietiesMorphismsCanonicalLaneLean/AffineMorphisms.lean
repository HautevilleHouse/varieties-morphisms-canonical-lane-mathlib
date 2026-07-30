import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure AffineVarietyMorphism {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] where
  underlyingMap : V → W
  regularFunctions : Prop
  sheafMorphism : Prop
  compatibilityZariski : Prop

structure AffineMorphismEvidence (f : AffineVarietyMorphism) where
  underlyingMapClosed : f.regularFunctions
  sheafMorphismClosed : f.sheafMorphism
  compatibilityZariskiClosed : f.compatibilityZariski

def AffineMorphismClosed (f : AffineVarietyMorphism) : Prop :=
  f.regularFunctions ∧ f.sheafMorphism ∧ f.compatibilityZariski

theorem affine_morphism_closed_from_evidence (f : AffineVarietyMorphism)
    (E : AffineMorphismEvidence f) : AffineMorphismClosed f := by
  exact And.intro E.underlyingMapClosed
    (And.intro E.sheafMorphismClosed E.compatibilityZariskiClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse