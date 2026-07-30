import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure AffineVarietyPackage where
  coordinateRing : Type
  polynomialRing : Type
  zeroLocus : Prop
  irreducibility : Prop
  dimension : Nat

structure AffineVarietyEvidence (P : AffineVarietyPackage) where
  zeroLocusClosed : P.zeroLocus
  irreducibilityClosed : P.irreducibility
  dimensionClosed : P.dimension ≥ 0

def AffineVarietyClosed (P : AffineVarietyPackage) : Prop :=
  P.zeroLocus ∧ P.irreducibility ∧ P.dimension ≥ 0

theorem affine_variety_closed_from_evidence (P : AffineVarietyPackage) (E : AffineVarietyEvidence P) :
    AffineVarietyClosed P := by
  exact And.intro E.zeroLocusClosed (And.intro E.irreducibilityClosed E.dimensionClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse