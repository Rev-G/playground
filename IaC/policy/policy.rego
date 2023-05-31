package terraform

import input as tfplan

deny[msg] {
  out := tfplan.planned_values.outputs[_]
  msg := sprintf(
    "%s: not good",
    [out.value]
  )
}