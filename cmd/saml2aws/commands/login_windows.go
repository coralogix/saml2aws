package commands

import (
	"github.com/coralogix/saml2aws/v2/helper/credentials"
	"github.com/coralogix/saml2aws/v2/helper/wincred"
)

func init() {
	credentials.CurrentHelper = &wincred.Wincred{}
}
