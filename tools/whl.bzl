load("@python_version_repo//:py_version.bzl", "HERMETIC_PYTHON_VERSION")

def _make_variable_tags_impl(ctx):
    vars = {}
    version = "cp" + ''.join(HERMETIC_PYTHON_VERSION.split("."))
    vars["ABI"] = version
    vars["PYTHON_TAG"] = version
    return [platform_common.TemplateVariableInfo(vars)]

make_variable_tags = rule(
    attrs = {},
    doc = """Make variable tags to pass to a py_wheel rule.""",
    implementation = _make_variable_tags_impl,
)
