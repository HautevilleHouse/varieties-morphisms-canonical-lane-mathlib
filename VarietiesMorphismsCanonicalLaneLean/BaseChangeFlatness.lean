import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.VarietyMorphism

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure BaseChangePackage (V : VarietyMorphismPackage) where
  baseChangeDomain : Type u
  baseChangeCodomain : Type v
  baseChangeMap : baseChangeDomain → baseChangeCodomain
  flatBaseChange : Prop
  pullbackPreservesClosedness : Prop
  baseChangeMorphismReg : Prop
  baseChangeMiracleFlat : Prop
  baseChangeFlatInherited : Prop

def BaseChangeClosed {V : VarietyMorphismPackage} (B : BaseChangePackage V) : Prop :=
  B.flatBaseChange ∧ B.pullbackPreservesClosedness ∧ B.baseChangeMorphismReg ∧
  B.baseChangeMiracleFlat ∧ B.baseChangeFlatInherited

structure BaseChangeEvidence {V : VarietyMorphismPackage}
    (B : BaseChangePackage V) where
  flatBaseChangeClosed : B.flatBaseChange
  pullbackPreservesClosednessClosed : B.pullbackPreservesClosedness
  baseChangeMorphismRegClosed : B.baseChangeMorphismReg
  baseChangeMiracleFlatClosed : B.baseChangeMiracleFlat
  baseChangeFlatInheritedClosed : B.baseChangeFlatInherited

theorem base_change_closed_from_evidence {V : VarietyMorphismPackage}
    (B : BaseChangePackage V) (E : BaseChangeEvidence B) : BaseChangeClosed B := by
  exact And.intro E.flatBaseChangeClosed
    (And.intro E.pullbackPreservesClosednessClosed
      (And.intro E.baseChangeMorphismRegClosed
        (And.intro E.baseChangeMiracleFlatClosed E.baseChangeFlatInheritedClosed)))

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse
