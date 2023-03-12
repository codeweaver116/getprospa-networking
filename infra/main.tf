terraform {
  cloud {
    organization = "Oaklabs"

    workspaces {
      name = "getprospa-networking-qa"
    }
  }
}