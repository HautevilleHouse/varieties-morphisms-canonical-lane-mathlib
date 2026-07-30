import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure FiniteMorphism (V W : Type u) [TopologicalSpace V] [TopologicalSpace W] where
  morphism : V → W
  finiteFibers : Prop
  integralExtension : Prop
  moduleFinite : Prop

structure FiniteMorphismEvidence (f : FiniteMorphism) where
  finiteFibersClosed : f.finiteFibers
  integralExtensionClosed : f.integralExtension
  moduleFiniteClosed : f.moduleFinite

def FiniteMorphismClosed (f : FiniteMorphism) : Prop :=
  f.finiteFibers ∧ f.integralExtension ∧ f.moduleFinite

theorem finite_morphism_closed_from_evidence (f : FiniteMorphism)
    (E : FiniteMorphismEvidence f) : FiniteMorphismClosed f := by
  exact And.intro E.finiteFibersClosed
    (And.intro E.integralExtensionClosed E.moduleFiniteClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse