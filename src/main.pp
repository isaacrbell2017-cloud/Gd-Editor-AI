#include <Geode/Geode.hpp>
#include <Geode/modify/EditorUI.hpp>

using namespace geode::prelude;
 $modify(GDDecoEditorUI, EditorUI) {
    bool init(LevelEditorLayer* editorLayer) {
         (!EditorUI::init(editorLayer))
            return false;

        log::info("GD Deco AI: Editor opened!");

        return true;
    }
};
