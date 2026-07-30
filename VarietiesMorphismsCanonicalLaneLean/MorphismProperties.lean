import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesMorphismsCanonicalLaneLean.AffineCoverage

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismPropertiesPackage (V : VarietyAdmittedObject) (A : AffineCoveragePackage V) where
  targetVariety : Type
  targetTopology : TopologicalSpace targetVariety
  continuousMap : Type
  locallyOfFiniteType : Prop
  separated : Prop
  proper : Prop
  finiteType : Prop

structure MorphismPropertiesEvidence (V : VarietyAdmittedObject)
    (A : AffineCoveragePackage V) (M : MorphismPropertiesPackage V A) where
  locallyOfFiniteTypeClosed : M.locallyOfFiniteType
  separatedClosed : M.separated
  properClosed : M.proper
  finiteTypeClosed : M.finiteType

def MorphismPropertiesClosed (V : VarietyAdmittedObject)
    (A : AffineCoveragePackage V) (M : MorphismPropertiesPackage V A) : Prop :=
  M.locallyOfFiniteType ∧ M.separated ∧ M.proper ∧ M.finiteType

theorem morphism_properties_closed_from_evidence (V : VarietyAdmittedObject)
    (A : AffineCoveragePackage V) (M : MorphismPropertiesPackage V A)
    (E : MorphismPropertiesEvidence V A M) : MorphismPropertiesClosed V A M := by
  exact And.intro E.locallyOfFiniteTypeClosed
    (And.intro E.separatedClosed
      (And.intro E.properClosed E.finiteTypeClosed))

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse