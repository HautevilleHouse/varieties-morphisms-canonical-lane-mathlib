import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure SheafMorphismPackage where
  sourceSpace : Type u
  targetSpace : Type v
  sheafMap : Type w
  presheafCompatibility : Prop
  stalkMap : Prop
  restrictionCommutativity : Prop

structure SheafMorphismEvidence (S : SheafMorphismPackage) where
  presheafCompatibilityClosed : S.presheafCompatibility
  stalkMapClosed : S.stalkMap
  restrictionCommutativityClosed : S.restrictionCommutativity

def SheafMorphismClosed (S : SheafMorphismPackage) : Prop :=
  S.presheafCompatibility ∧ S.stalkMap ∧ S.restrictionCommutativity

theorem sheaf_morphism_closed_from_evidence (S : SheafMorphismPackage)
    (E : SheafMorphismEvidence S) : SheafMorphismClosed S := by
  exact And.intro E.presheafCompatibilityClosed (And.intro E.stalkMapClosed E.restrictionCommutativityClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse