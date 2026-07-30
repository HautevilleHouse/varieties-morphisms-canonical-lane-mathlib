import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

structure MorphismPullbackPushforward (A : AdmissibleClass) where
  sheafMorphism : Type u
  pullbackDefined : Prop
  pushforwardDefined : Prop
  adjunctionProperty : Prop
  pullbackDefinedClosed : pullbackDefined
  pushforwardDefinedClosed : pushforwardDefined
  adjunctionPropertyClosed : adjunctionProperty

def PullbackPushforwardClosed (M : MorphismPullbackPushforward A) : Prop :=
  M.pullbackDefined ∧ M.pushforwardDefined ∧ M.adjunctionProperty

theorem pullback_pushforward_closed_from_evidence (M : MorphismPullbackPushforward A) :
    PullbackPushforwardClosed M := by
  exact And.intro M.pullbackDefinedClosed
    (And.intro M.pushforwardDefinedClosed M.adjunctionPropertyClosed)

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse