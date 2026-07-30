import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure FiniteMorphismPackage where
  sourceAffineVariety : Type u
  targetAffineVariety : Type v
  ringHomomorphism : Type w
  finiteModule : Prop
  integrality : Prop
  finiteFibers : Prop

structure FiniteMorphismEvidence (F : FiniteMorphismPackage) where
  finiteModuleClosed : F.finiteModule
  integralityClosed : F.integrality
  finiteFibersClosed : F.finiteFibers

def FiniteMorphismClosed (F : FiniteMorphismPackage) : Prop :=
  F.finiteModule ∧ F.integrality ∧ F.finiteFibers

theorem finite_morphism_closed_from_evidence (F : FiniteMorphismPackage)
    (E : FiniteMorphismEvidence F) : FiniteMorphismClosed F := by
  exact And.intro E.finiteModuleClosed (And.intro E.integralityClosed E.finiteFibersClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse