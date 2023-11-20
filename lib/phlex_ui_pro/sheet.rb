# frozen_string_literal: true

module PhlexUI
    class Sheet < Base
        def template(&)
            div(**attrs, &)
        end

        private

        def default_attrs
            {
                data: { controller: "sheet"}
            }
        end
    end
end