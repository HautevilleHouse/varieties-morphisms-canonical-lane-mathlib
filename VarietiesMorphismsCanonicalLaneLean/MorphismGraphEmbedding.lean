import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismGraphEmbedding (A : AdmissibleClass) where
  sourceVariety : Type u
  targetVariety : Type v
  graph : Type w
  graphClosedSubvariety : Prop
  projectionIso : Prop
  graphClosedSubvarietyClosed : graphClosedSubvariety
  projectionIsoClosed : projectionIso

def GraphEmbeddingClosed (G : MorphismGraphEmbedding A) : Prop :=
  G.graphClosedSubvariety ∧ G.projectionIso

theorem graph_embedding_closed_from_evidence (G : MorphismGraphEmbedding A) :
    GraphEmbeddingClosed G := by
  exact And.intro G.graphClosedSubvarietyClosed G.projectionIsoClosed

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse