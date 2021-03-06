/*
Copyright 2012-2013 Joshua Tynjala

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
*/
package feathers.data
{
	import flash.errors.IllegalOperationError;

	/**
	 * An <code>IListCollectionDataDescriptor</code> implementation for Vector.&lt;Number&gt;.
	 * 
	 * @see ListCollection
	 * @see IListCollectionDataDescriptor
	 */
	public class VectorNumberListCollectionDataDescriptor implements IListCollectionDataDescriptor
	{
		/**
		 * Constructor.
		 */
		public function VectorNumberListCollectionDataDescriptor()
		{
		}
		
		/**
		 * @inheritDoc
		 */
		public function getLength(data:Object):int
		{
			this.checkForCorrectDataType(data);
			return (data as Vector.<Number>).length;
		}
		
		/**
		 * @inheritDoc
		 */
		public function getItemAt(data:Object, index:int):Object
		{
			this.checkForCorrectDataType(data);
			return (data as Vector.<Number>)[index];
		}
		
		/**
		 * @inheritDoc
		 */
		public function setItemAt(data:Object, item:Object, index:int):void
		{
			this.checkForCorrectDataType(data);
			(data as Vector.<Number>)[index] = item as Number;
		}
		
		/**
		 * @inheritDoc
		 */
		public function addItemAt(data:Object, item:Object, index:int):void
		{
			this.checkForCorrectDataType(data);
			(data as Vector.<Number>).splice(index, 0, item);
		}
		
		/**
		 * @inheritDoc
		 */
		public function removeItemAt(data:Object, index:int):Object
		{
			this.checkForCorrectDataType(data);
			return (data as Vector.<Number>).splice(index, 1)[0];
		}
		
		/**
		 * @inheritDoc
		 */
		public function getItemIndex(data:Object, item:Object):int
		{
			this.checkForCorrectDataType(data);
			return (data as Vector.<Number>).indexOf(item as Number);
		}
		
		/**
		 * @private
		 */
		protected function checkForCorrectDataType(data:Object):void
		{
			if(!(data is Vector.<Number>))
			{
				throw new IllegalOperationError("Expected Vector.<Number>. Received " + Object(data).constructor + " instead.");
			}
		}
	}
}