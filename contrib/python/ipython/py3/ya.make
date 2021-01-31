PY3_LIBRARY()

LICENSE(BSD-3-Clause)

VERSION(7.19.0)



PEERDIR(
    contrib/python/backcall
    contrib/python/decorator
    contrib/python/jedi
    contrib/python/pickleshare
    contrib/python/traitlets
    contrib/python/prompt_toolkit
    contrib/python/Pygments
    contrib/python/setuptools
)

IF (OS_WINDOWS)
    PEERDIR(
        contrib/python/colorama
    )
ELSE()
    PEERDIR(
        contrib/python/pexpect
    )
ENDIF()

IF (OS_DARWIN)
    PEERDIR(
        contrib/python/appnope
    )
ENDIF()

NO_CHECK_IMPORTS(IPython.*)

NO_LINT()

PY_SRCS(
    TOP_LEVEL
    IPython/__init__.py
    IPython/__main__.py
    IPython/config.py
    IPython/consoleapp.py
    IPython/core/__init__.py
    IPython/core/alias.py
    IPython/core/application.py
    IPython/core/async_helpers.py
    IPython/core/autocall.py
    IPython/core/builtin_trap.py
    IPython/core/compilerop.py
    IPython/core/completer.py
    IPython/core/completerlib.py
    IPython/core/crashhandler.py
    IPython/core/debugger.py
    IPython/core/display.py
    IPython/core/display_trap.py
    IPython/core/displayhook.py
    IPython/core/displaypub.py
    IPython/core/error.py
    IPython/core/events.py
    IPython/core/excolors.py
    IPython/core/extensions.py
    IPython/core/formatters.py
    IPython/core/getipython.py
    IPython/core/history.py
    IPython/core/historyapp.py
    IPython/core/hooks.py
    IPython/core/inputsplitter.py
    IPython/core/inputtransformer.py
    IPython/core/inputtransformer2.py
    IPython/core/interactiveshell.py
    IPython/core/latex_symbols.py
    IPython/core/logger.py
    IPython/core/macro.py
    IPython/core/magic.py
    IPython/core/magic_arguments.py
    IPython/core/magics/__init__.py
    IPython/core/magics/auto.py
    IPython/core/magics/basic.py
    IPython/core/magics/code.py
    IPython/core/magics/config.py
    IPython/core/magics/display.py
    IPython/core/magics/execution.py
    IPython/core/magics/extension.py
    IPython/core/magics/history.py
    IPython/core/magics/logging.py
    IPython/core/magics/namespace.py
    IPython/core/magics/osm.py
    IPython/core/magics/packaging.py
    IPython/core/magics/pylab.py
    IPython/core/magics/script.py
    IPython/core/oinspect.py
    IPython/core/page.py
    IPython/core/payload.py
    IPython/core/payloadpage.py
    IPython/core/prefilter.py
    IPython/core/profileapp.py
    IPython/core/profiledir.py
    IPython/core/prompts.py
    IPython/core/pylabtools.py
    IPython/core/release.py
    IPython/core/shellapp.py
    IPython/core/splitinput.py
    IPython/core/ultratb.py
    IPython/core/usage.py
    IPython/display.py
    IPython/extensions/__init__.py
    IPython/extensions/autoreload.py
    IPython/extensions/cythonmagic.py
    IPython/extensions/rmagic.py
    IPython/extensions/storemagic.py
    IPython/extensions/sympyprinting.py
    IPython/external/__init__.py
    IPython/external/decorators/__init__.py
    IPython/external/decorators/_decorators.py
    IPython/external/decorators/_numpy_testing_noseclasses.py
    IPython/external/mathjax.py
    IPython/external/qt_for_kernel.py
    IPython/external/qt_loaders.py
    IPython/frontend.py
    IPython/html.py
    IPython/kernel/__init__.py
    #IPython/kernel/__main__.py
    IPython/kernel/adapter.py
    IPython/kernel/channels.py
    IPython/kernel/channelsabc.py
    IPython/kernel/client.py
    IPython/kernel/clientabc.py
    IPython/kernel/connect.py
    IPython/kernel/kernelspec.py
    IPython/kernel/kernelspecapp.py
    IPython/kernel/launcher.py
    IPython/kernel/manager.py
    IPython/kernel/managerabc.py
    IPython/kernel/multikernelmanager.py
    IPython/kernel/restarter.py
    IPython/kernel/threaded.py
    IPython/lib/__init__.py
    IPython/lib/backgroundjobs.py
    IPython/lib/clipboard.py
    IPython/lib/deepreload.py
    IPython/lib/demo.py
    IPython/lib/display.py
    IPython/lib/editorhooks.py
    IPython/lib/guisupport.py
    IPython/lib/inputhook.py
    IPython/lib/inputhookglut.py
    IPython/lib/inputhookgtk.py
    IPython/lib/inputhookgtk3.py
    IPython/lib/inputhookpyglet.py
    IPython/lib/inputhookqt4.py
    IPython/lib/inputhookwx.py
    IPython/lib/kernel.py
    IPython/lib/latextools.py
    IPython/lib/lexers.py
    IPython/lib/pretty.py
    IPython/lib/security.py
    IPython/nbconvert.py
    IPython/nbformat.py
    IPython/parallel.py
    IPython/paths.py
    IPython/qt.py
    IPython/sphinxext/__init__.py
    IPython/sphinxext/custom_doctests.py
    IPython/sphinxext/ipython_console_highlighting.py
    IPython/sphinxext/ipython_directive.py
    IPython/terminal/__init__.py
    IPython/terminal/console.py
    IPython/terminal/debugger.py
    IPython/terminal/embed.py
    IPython/terminal/interactiveshell.py
    IPython/terminal/ipapp.py
    IPython/terminal/magics.py
    IPython/terminal/prompts.py
    IPython/terminal/pt_inputhooks/__init__.py
    IPython/terminal/pt_inputhooks/asyncio.py
    IPython/terminal/pt_inputhooks/glut.py
    IPython/terminal/pt_inputhooks/gtk.py
    IPython/terminal/pt_inputhooks/gtk3.py
    IPython/terminal/pt_inputhooks/osx.py
    IPython/terminal/pt_inputhooks/pyglet.py
    IPython/terminal/pt_inputhooks/qt.py
    IPython/terminal/pt_inputhooks/tk.py
    IPython/terminal/pt_inputhooks/wx.py
    IPython/terminal/ptshell.py
    IPython/terminal/ptutils.py
    IPython/terminal/shortcuts.py
    IPython/testing/__init__.py
    IPython/testing/decorators.py
    IPython/testing/globalipapp.py
    IPython/testing/iptest.py
    IPython/testing/iptestcontroller.py
    IPython/testing/ipunittest.py
    IPython/testing/plugin/__init__.py
    IPython/testing/plugin/dtexample.py
    IPython/testing/plugin/ipdoctest.py
    IPython/testing/plugin/iptest.py
    IPython/testing/plugin/setup.py
    IPython/testing/plugin/show_refs.py
    IPython/testing/plugin/simple.py
    IPython/testing/plugin/simplevars.py
    IPython/testing/plugin/test_ipdoctest.py
    IPython/testing/plugin/test_refs.py
    IPython/testing/skipdoctest.py
    IPython/testing/tools.py
    IPython/utils/PyColorize.py
    IPython/utils/__init__.py
    IPython/utils/_process_cli.py
    IPython/utils/_process_common.py
    IPython/utils/_process_posix.py
    IPython/utils/_process_win32.py
    IPython/utils/_process_win32_controller.py
    IPython/utils/_sysinfo.py
    IPython/utils/capture.py
    IPython/utils/colorable.py
    IPython/utils/coloransi.py
    IPython/utils/contexts.py
    IPython/utils/daemonize.py
    IPython/utils/data.py
    IPython/utils/decorators.py
    IPython/utils/dir2.py
    IPython/utils/encoding.py
    IPython/utils/eventful.py
    IPython/utils/frame.py
    IPython/utils/generics.py
    IPython/utils/importstring.py
    IPython/utils/io.py
    IPython/utils/ipstruct.py
    IPython/utils/jsonutil.py
    IPython/utils/localinterfaces.py
    IPython/utils/log.py
    IPython/utils/module_paths.py
    IPython/utils/openpy.py
    IPython/utils/path.py
    IPython/utils/pickleutil.py
    IPython/utils/process.py
    IPython/utils/py3compat.py
    IPython/utils/sentinel.py
    IPython/utils/shimmodule.py
    IPython/utils/signatures.py
    IPython/utils/strdispatch.py
    IPython/utils/sysinfo.py
    IPython/utils/syspathcontext.py
    IPython/utils/tempdir.py
    IPython/utils/terminal.py
    IPython/utils/text.py
    IPython/utils/timing.py
    IPython/utils/tokenutil.py
    IPython/utils/traitlets.py
    IPython/utils/tz.py
    IPython/utils/ulinecache.py
    IPython/utils/version.py
    IPython/utils/wildcard.py
)

RESOURCE_FILES(
    PREFIX contrib/python/ipython/py3/
    .dist-info/METADATA
    .dist-info/top_level.txt
    IPython/core/profile/README_STARTUP
)

END()

RECURSE(
    bin
)