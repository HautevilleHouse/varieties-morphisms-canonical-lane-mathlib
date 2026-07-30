import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure ProjectiveVarietyPackage where
  projectiveSpace : Type u
  homogeneousIdeal : Type v
  closedSubscheme : Prop
  irreducibility : Prop
  dimension : Nat

structure ProjectiveVarietyEvidence (P : ProjectiveVarietyPackage) where
  closedSubschemeClosed : P.closedSubscheme
  irreducibilityClosed : P.irreducibility
  dimensionClosed : P.dimension = 0 ∨ P.dimension > 0

def ProjectiveVarietyClosed (P : ProjectiveVarietyPackage) : Prop :=
  P.closedSubscheme ∧ P.irreducibility ∧ (P.dimension = 0 ∨ P.dimension > 0)

theorem projective_variety_closed_from_evidence (P : ProjectiveVarietyPackage)
    (E : ProjectiveVarietyEvidence P) : ProjectiveVarietyClosed P := by
  exact And.intro E.closedSubschemeClosed (And.intro E.irreducibilityClosed E.dimensionClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse