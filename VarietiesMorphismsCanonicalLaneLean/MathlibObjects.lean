import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VarietiesMorphismsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VarietiesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VarietiesAdmittedObject where
  space : VarietiesSpace
  algebraicVariety : Prop
  morphismDomain : Type
  morphismCodomain : Type
  morphism : (morphismDomain → morphismCodomain)
  isRegularMorphism : Prop
  conclusion : isRegularMorphism

structure VarietiesEndgameState where
  object : VarietiesAdmittedObject

def VarietiesWitnessClosed (O : VarietiesAdmittedObject) : Prop :=
  O.isRegularMorphism

end VarietiesMorphismsCanonicalLaneLean
end HautevilleHouse