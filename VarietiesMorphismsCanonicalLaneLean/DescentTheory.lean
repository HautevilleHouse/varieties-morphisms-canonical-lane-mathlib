import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.BaseChange

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure DescentTheoryPackage (V : VarietyAdmittedObject) where
  descentData : Type
  effectiveDescentCondition : Prop
  descentMorphism : Type
  faithfullyFlatDescent : Prop

structure DescentTheoryEvidence (V : VarietyAdmittedObject)
    (D : DescentTheoryPackage V) where
  effectiveDescentConditionClosed : D.effectiveDescentCondition
  faithfullyFlatDescentClosed : D.faithfullyFlatDescent

def DescentTheoryClosed (V : VarietyAdmittedObject) (D : DescentTheoryPackage V) : Prop :=
  D.effectiveDescentCondition ∧ D.faithfullyFlatDescent

theorem descent_theory_closed_from_evidence (V : VarietyAdmittedObject)
    (D : DescentTheoryPackage V) (E : DescentTheoryEvidence V D) :
    DescentTheoryClosed V D := by
  exact And.intro E.effectiveDescentConditionClosed
    E.faithfullyFlatDescentClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse