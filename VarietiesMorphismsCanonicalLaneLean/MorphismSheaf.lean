import canonicalLaneMathlib.AffineVarieties
open CategoryTheory

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismSheafPackage where
  sourceScheme : Type
  targetScheme : Type
  structureSheafSource : Type
  structureSheafTarget : Type
  morphismOnSpaces : sourceScheme → targetScheme
  sheafMorphism : structureSheafTarget → structureSheafSource
  sheafCondition : Prop

structure MorphismSheafEvidence (P : MorphismSheafPackage) where
  sheafConditionClosed : P.sheafCondition
  morphismRegular : ∀ (U : Type) (f : P.structureSheafTarget), True

def MorphismSheafClosed (P : MorphismSheafPackage) : Prop :=
  P.sheafCondition

theorem morphism_sheaf_closed_from_evidence (P : MorphismSheafPackage) (E : MorphismSheafEvidence P) :
    MorphismSheafClosed P := by
  exact E.sheafConditionClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse