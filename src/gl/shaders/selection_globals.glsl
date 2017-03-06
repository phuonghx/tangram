// Vertex attribute + varying for feature selection
#if defined(TANGRAM_FEATURE_SELECTABLE) && defined(TANGRAM_VERTEX_SHADER)
    attribute vec4 a_selection_color;
    attribute vec4 a_selection_group;
    attribute vec4 a_selection_hover_color;
    attribute vec4 a_selection_click_color;
#endif

#if defined(TANGRAM_FEATURE_SELECTABLE)
    varying vec4 v_selection_color;
    varying float v_selection_state;

    uniform vec4 u_selection_hover_group;
    uniform vec4 u_selection_click_group;

    // uniform vec4 u_selection_hover_color;
    // uniform vec4 u_selection_click_color;

    // uniform bool u_selection_has_hover_color;
    // uniform bool u_selection_has_click_color;

    bool isFeatureHover (void) {
        return abs(1. - v_selection_state) <= TANGRAM_EPSILON;
    }

    bool isFeatureClick (void) {
        return abs(2. - v_selection_state) <= TANGRAM_EPSILON;
    }
#endif
