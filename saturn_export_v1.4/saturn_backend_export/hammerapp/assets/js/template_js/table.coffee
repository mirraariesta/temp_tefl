$ ->
  $('.datatable').dataTable
    aoColumnDefs: [
      bSortable: false
      aTargets: [0, 5]
    ]
    aaSorting: []
  # Make it bootstrap styles compatible
  $(".datatable").each ->
    datatable = $(this)

    # SEARCH - Add the placeholder for Search and Turn this into in-line form control
    search_input = datatable.closest(".dataTables_wrapper").find("div[id$=_filter] input")
    search_input.attr "placeholder", "Search"
    search_input.addClass "form-control input-sm"

    # LENGTH - Inline-Form control
    length_sel = datatable.closest(".dataTables_wrapper").find("div[id$=_length] select")
    length_sel.addClass "form-control input-sm"

    # LENGTH - Info adjust location
    length_sel = datatable.closest(".dataTables_wrapper").find("div[id$=_info]")
    length_sel.css "margin-top", "18px"
