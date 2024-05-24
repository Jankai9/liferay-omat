package com.acme.myportlet.portlet;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCActionCommand;
import com.liferay.portal.kernel.portlet.bridges.mvc.BaseMVCActionCommand;
import com.liferay.portal.kernel.util.ParamUtil;
import org.osgi.service.component.annotations.Component;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

@Component(
        immediate = true,
        property = {
                "javax.portlet.name=com_acme_myportlet_MyPortlet",
                "mvc.command.name=submitForm"
        },
        service = MVCActionCommand.class
)
public class MyFormMVCActionCommand extends BaseMVCActionCommand {

    @Override
    protected void doProcessAction(ActionRequest actionRequest, ActionResponse actionResponse)  {
        String firstName = ParamUtil.getString(actionRequest, "firstName");

        _log.info("Käsitellään lomakkeen tiedot");
        System.out.println("First Name: " + firstName);
    }

    private static final Log _log = LogFactoryUtil.getLog(
            MyFormMVCActionCommand.class);
}