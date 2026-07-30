import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure EtaleMorphism (V W : Type u) [TopologicalSpace V] [TopologicalSpace W] where
  morphism : V → W
  smoothUnramified : Prop
  flatFinitePresentation : Prop
  isomorphismTangentSpaces : Prop

structure EtaleMorphismEvidence (f : EtaleMorphism) where
  smoothUnramifiedClosed : f.smoothUnramified
  flatFinitePresentationClosed : f.flatFinitePresentation
  isomorphismTangentSpacesClosed : f.isomorphismTangentSpaces

def EtaleMorphismClosed (f : EtaleMorphism) : Prop :=
  f.smoothUnramified ∧ f.flatFinitePresentation ∧ f.isomorphismTangentSpaces

theorem etale_morphism_closed_from_evidence (f : EtaleMorphism)
    (E : EtaleMorphismEvidence f) : EtaleMorphismClosed f := by
  exact And.intro E.smoothUnramifiedClosed
    (And.intro E.flatFinitePresentationClosed E.isomorphismTangentSpacesClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse