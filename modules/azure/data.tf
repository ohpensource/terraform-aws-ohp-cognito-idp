data "template_file" "xml_metadata_file" {
  count    = local.render_xml_metadata_file
  template = var.xml_metadata_file
}
