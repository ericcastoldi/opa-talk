package exemplo.tags

import rego.v1
import input.resource_changes

deny_missing_tags contains ret if {
	some res in resource_changes

	res.change.after.tags == null 

    ret := {
        "success": false,
        "msg" : "É obrigatória a existência de tags."
    }
}
