// Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
package org.mvcexpress.core.traceObjects.mediator {
import org.mvcexpress.core.namespace.pureLegsCore;
import org.mvcexpress.core.traceObjects.MvcTraceActions;
import org.mvcexpress.core.traceObjects.TraceObj_SendMessage;
import org.mvcexpress.mvc.Mediator;

/**
 * Class for mvcExpress tracing. (debug mode only)
 * @author Raimundas Banevicius (http://www.mindscriptact.com/)
 */
public class TraceMediator_sendMessage extends TraceObj_SendMessage {
	
	public var type:String;
	public var params:Object;
	
	public function TraceMediator_sendMessage(moduleName:String, mediatorObject:Mediator, type:String, params:Object, preSend:Boolean) {
		use namespace pureLegsCore;
		super(((preSend) ? MvcTraceActions.MEDIATOR_SENDMESSAGE : MvcTraceActions.MEDIATOR_SENDMESSAGE_CLEAN), moduleName);
		this.mediatorObject = mediatorObject;
		this.type = type;
		this.params = params;
		//
		canPrint = false;
	}

}
}