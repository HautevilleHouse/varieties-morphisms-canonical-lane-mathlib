import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismAffinePackage where
  sourceVariety : Type u
  targetVariety : Type v
  coordinateRingMap : Type w
  polynomialMap : Prop
  continuity : Prop
  regularFunctionPullback : Prop

structure MorphismAffineEvidence (M : MorphismAffinePackage) where
  polynomialMapClosed : M.polynomialMap
  continuityClosed : M.continuity
  regularFunctionPullbackClosed : M.regularFunctionPullback

def MorphismAffineClosed (M : MorphismAffinePackage) : Prop :=
  M.polynomialMap ∧ M.continuity ∧ M.regularFunctionPullback

theorem morphism_affine_closed_from_evidence (M : MorphismAffinePackage)
    (E : MorphismAffineEvidence M) : MorphismAffineClosed M := by
  exact And.intro E.polynomialMapClosed (And.intro E.continuityClosed E.regularFunctionPullbackClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse