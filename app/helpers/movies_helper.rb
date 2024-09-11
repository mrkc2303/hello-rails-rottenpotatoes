module MoviesHelper
    # Generates a sortable column link.
    def sortable(column, title = nil)
      title ||= column.titleize
      direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
      
      # Determine the arrow based on the sort direction
      arrow = if column == params[:sort]
                params[:direction] == "asc" ? "▲" : "▼"
              else
                ""
              end
  
      # Add the arrow next to the title and make it part of the link
      link_to "#{title} #{arrow}".html_safe, { sort: column, direction: direction }
    end
  end