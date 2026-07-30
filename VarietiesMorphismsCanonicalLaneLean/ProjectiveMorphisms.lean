import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure ProjectiveVarietyMorphism {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] where
  underlyingMap : V → W
  homogeneousPolynomials : Prop
  projectivityPreserved : Prop
  lineBundlePullback : Prop

structure ProjectiveMorphismEvidence (f : ProjectiveVarietyMorphism) where
  homogeneousPolynomialsClosed : f.homogeneousPolynomials
  projectivityPreservedClosed : f.projectivityPreserved
  lineBundlePullbackClosed : f.lineBundlePullback

def ProjectiveMorphismClosed (f : ProjectiveVarietyMorphism) : Prop :=
  f.homogeneousPolynomials ∧ f.projectivityPreserved ∧ f.lineBundlePullback

theorem projective_morphism_closed_from_evidence (f : ProjectiveVarietyMorphism)
    (E : ProjectiveMorphismEvidence f) : ProjectiveMorphismClosed f := by
  exact And.intro E.homogeneousPolynomialsClosed
    (And.intro E.projectivityPreservedClosed E.lineBundlePullbackClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse