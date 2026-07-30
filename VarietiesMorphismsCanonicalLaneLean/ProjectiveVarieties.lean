import canonicalLaneMathlib.MorphismSheaf

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure ProjectiveVarietyPackage where
  projectiveSpace : Type
  homogeneousIdeal : Type
  vanishingSet : Prop
  projectiveDimension : Nat

structure ProjectiveVarietyEvidence (P : ProjectiveVarietyPackage) where
  vanishingSetClosed : P.vanishingSet
  projectiveDimensionClosed : P.projectiveDimension ≥ 0

def ProjectiveVarietyClosed (P : ProjectiveVarietyPackage) : Prop :=
  P.vanishingSet ∧ P.projectiveDimension ≥ 0

theorem projective_variety_closed_from_evidence (P : ProjectiveVarietyPackage) (E : ProjectiveVarietyEvidence P) :
    ProjectiveVarietyClosed P := by
  exact And.intro E.vanishingSetClosed E.projectiveDimensionClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse